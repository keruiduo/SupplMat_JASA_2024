# SupplMat_JASA_2024

This folder contains supplementary materials for the following publication:
Maia Ponsonnet, Christophe Coupe, François Pellegrino, Garcia Arasco Aitana, and Katarzyna Pisanski (2024). Vowel signatures in emotional interjections and nonlinguistic vocalizations expressing pain, disgust, and joy across languages. Journal of the Acoustic Society of America. DOI: 10.1121/10.0032454

The files contain the following information:

1. dataset(final).ASJP.intj.csv --> Data on collected interjections, with in the columns from left to right and for each interjection:
   - World region (REGION)
   - Language name (LANGUAGE)
   - Glottocode of the language (GLOTTOCODE)
   - Emotion expressed by the interjection - PAIN, DISGUST or ANGER (EMOTION)
   - Revised/corrected phonetic form (FORM)
   - Initial phonetic form (INITIAL_FORM)
   - Recoding of the phonetic form with ASJP classes (SoundClasses)
   - Segment count (SegmentCount)

3. dataset(final).ASJP.lexicon.csv --> Data on lexical forms (non-interjections) extracted from ASJP in the languages where interjections were collected. Columns from left to right:
   - Phonetic form (FORM)
   - Glottocode of the language (GLOTTOCODE)
   - Recoding of the phonetic form with ASJP classes (SoundClasses)
   - Segment count (SegmentCount)
   - The type of lexical input - always LEXICON, in contrast with PAIN, DISGUST or ANGER for interjections (EMOTION)

5. dataset(final).Lexibank.intj.csv --> File strictly identical to 'dataset(final).ASJP.intj.csv' (duplicated to have two similar pairs of files, one for ASJP and one for Lexibank

6. dataset(final).Lexibank.lexicon.csv --> Data on lexical forms (non-interjections) extracted from Lexibank in the languages where interjections were collected. Same columns as for  'dataset(final).ASJP.lexicon.csv'

7. Data sources for interjections.ods --> Sources for the collection of the interjections

8. Vocalizations.csv --> Experimental data on vocalizations, with in the columns from left to right for each observation:
   - Name of the file containing the audio recording (file)
   - Language (Language)
   - ID of the participant (Idvocaliser)
   - Emotional Context (Context)
   - Sex of the participant (SexVoc)
   - Age of the participant (Age)
   - Country of birth of the participant (CountryBorn)
   - First language of the participant (FirstLang)
   - (LangNat)
   - (LangProf)
   - (LangInt)
   - (LangBas)
   - (LangFam)
   - (LangFr)
   - (LangWk)
   - (LangSoc)
   - (Inter)
   - (from)
   - (to)
   - (label)
   - (dF)
   - (vtl)
   - (F1)
   - (F2)
   - (F3)
   - (F4)
   - (F1r)
   - (F2r)
   - (vwl)
   - (ASJP)
   - (em)
   - (lang)
   - Sex)

;1;0;1;0;CN;EN;EN;EN;AS;514;614;AA;952;18.59;371;1577;2157;3443;-0.110333099929979;0.156346904071222;ø;e;Disgust;Chinese;M
