
### Prepare data
{
  df <- read.csv('C:/ANONYMOUS/JASA_vocs_final_formants_Full_Plots.csv', sep=";", stringsAsFactors = TRUE)
  
  # df = na.omit(file)  # no NAs
  df = droplevels(df[df$Inter=='AS',])
  
  ##Change chr to factor

  df$Age <- as.numeric(as.numeric(df$Age))
  df$file <- as.character(as.character(df$file))

  
  ## changing names codes
  df$vwlASPJ[df$vwl == 'SurpriseNeu'] <- 'RepairIn'
  
  
}

### Andrey's script
{
  ipa = read.csv('C:/ANONYMOUS/ipa.csv')
  
  
  for (i in 1:nrow(df)) {
    temp = as.numeric(df[i, c('F1', 'F2', 'F3', 'F4')])
    sch = soundgen::schwa(temp)
    df[i, c('F1r', 'F2r')] = sch$ff_relative_dF[1:2]
    nm = matrix(sch$ff_relative_dF[1:2], nrow = nrow(ipa), ncol = 2, byrow = TRUE)
    dists = rowMeans((nm - ipa[, c('F1', 'F2')])^2)
    df$vwl[i] = ipa$label[which.min(dists)]
  }
  table(df$vwl)
  
  df$em = ''
  df$em[grep('Disgust', df$file)] = 'Disgust'
  df$em[grep('Pain', df$file)] = 'Pain'
  df$em[grep('Achievement', df$file)] = 'Achievement'
  # table(df$em)
  # df[df$em == '', ]
  
  
  df = df[df$em != '', ]
  # table(df$vwl, df$em)
  
  df$lang = substr(df$file, 1, 2)
  df$lang[df$lang == 'CN'] = 'Chinese'
  df$lang[df$lang == 'EN'] = 'English'
  df$lang[df$lang == 'ES'] = 'Spanish'
  df$lang[df$lang == 'JP'] = 'Japanese'
  df$lang[df$lang == 'TU'] = 'Turkish'
  # table(df$lang)
  
  df$Sex = substr(df$file, nchar(df$file) - 4, stop = nchar(df$file) - 4)
  
  
  }
  
  df$em[df$em == 'Achievement'] <- 'Joy'

  
  ### analysis
  table(df$em)
  # vowel plot
  ggplot(df, aes(F1r, F2r, color = vwl, shape = em)) +
    geom_point() +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
    facet_wrap(~em) +
    coord_cartesian(xlim = c(-0.25, 0.6), ylim = c(-0.9, 0.7)) +
    theme_bw() +
    theme(panel.grid = element_blank())
  
  ggplot(df, aes(F1r, F2r)) +
    stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = FALSE) +
    scale_fill_gradientn(colors = plot3D::jet.col(100)) +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
    facet_wrap(~em) +
    theme_bw() +
    theme(panel.grid = element_blank())
  ggsave('../pix/em_vwl.png', width = 14, height = 12, units = 'cm')
  
  ggplot(df, aes(F1r, F2r)) +
    stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = FALSE) +
    scale_fill_gradientn(colors = plot3D::jet.col(100)) +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
    facet_wrap(~lang + em, ncol = 4) +
    theme_bw() +
    theme(panel.grid = element_blank())
  ggsave('../pix/em_vwl_lang.png', width = 20, height = 22, units = 'cm')
  
  ggplot(df, aes(F1r, F2r)) +
    stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = TRUE) +
    scale_fill_gradientn(colors = plot3D::jet.col(100)) +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
    facet_wrap(~lang + em, ncol = 4) +
    theme_bw() +
    theme(panel.grid = element_blank())
  ggsave('../pix/em_vwl_lang.png', width = 20, height = 22, units = 'cm')
  
  
  # a separate plot per emotion to make sure the max density is the same for each em
  
  library(patchwork)
  p1 = ggplot(df[df$em == 'Joy', ], aes(F1r, F2r)) +
    stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = FALSE) +
    coord_cartesian(xlim = c(-0.2, 0.5), ylim = c(-0.7, 0.7)) +
    scale_fill_gradientn(colors = plot3D::jet.col(100)) +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE)  +
    ggtitle('Joy') +
    theme_bw() +
    theme(panel.grid = element_blank())
  
  # p2 = ggplot(df[df$em == 'Amusement', ], aes(F1r, F2r)) +
  #   stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = FALSE) +
  #   scale_fill_gradientn(colors = plot3D::jet.col(100)) +
  #   geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
  #   ggtitle('Amusement')
  
  p3 = ggplot(df[df$em == 'BDisgust', ], aes(F1r, F2r)) +
    stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = FALSE) +
    coord_cartesian(xlim = c(-0.2, 0.5), ylim = c(-0.7, 0.7)) +
    scale_fill_gradientn(colors = plot3D::jet.col(100)) +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
    ggtitle('Disgust') +
    theme_bw() +
    theme(panel.grid = element_blank())
  
  p4 = ggplot(df[df$em == 'APain', ], aes(F1r, F2r)) +
    stat_density_2d(aes(fill = after_stat(count)), geom = 'raster', bins = 100, contour = FALSE, show.legend = FALSE) +
    coord_cartesian(xlim = c(-0.2, 0.5), ylim = c(-0.7, 0.7)) +
    scale_fill_gradientn(colors = plot3D::jet.col(100)) +
    geom_text(data = ipa, aes(F1, F2, label = label), inherit.aes = FALSE) +
    ggtitle('Pain') +
    theme_bw() +
    theme(panel.grid = element_blank())
  
  p4 + p3 + p1 + scale_fill_gradientn(colors = plot3D::jet.col(100)) 
  &
    theme_bw() &
    theme(panel.grid = element_blank())
  ggsave('../pix/em_vwl_sepPerEm.png', width = 16, height = 14, units = 'cm')
  
  