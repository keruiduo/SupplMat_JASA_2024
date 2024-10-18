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

8. Vocalizations.ods --> Experimental data on vocalizations, with in the columns from left to right for each observation:
   - Name of the file containing the audio recording (file)
   - Speaker's primary language (CN for Chinese; EN for English; ES for Spanish; JP for Japanese; TUR for Turkish) (Language)
   - Speaker's ID (Idvocaliser)
   - Emotion - (Disgust, Pain or Joy) (Context)
   - Speaker's gender (M for Man; F for Woman; NB for Non-binary) (SexVoc)
   - Speaker's age (Age)
   - Speaker's country of birth (CountryBorn)
   - First language acquired by the speaker (CN for Chinese; EN for English; ES for Spanish; JP for Japanese; TUR for Turkish) (FirstLang)
   - Total number of languages spoken by the speaker at a native/bilingual level (LangNat)
   - Total number of languages spoken by the speaker at a proficient level (LangProf)
   - Total number of languages spoken by the speaker at an intermediate level (LangInt)
   - Total number of languages spoken by the speaker at a basic level (LangBas)
   - Language mainly used with the family (LangFam)
   - Language mainly used with friends (LangFr)
   - Language mainly used at work (LangWk)
   - Language mainly used in social media (LangSoc)
   - Interjection classification (AS for 'Aberrant sound'; for 'Primary Interjection') according to Goddard (2014). Primary interjections were excluded from our models (Inter)
   - Start point of the annotation in which the formant frequencies were calculated (from)
   - End point of the annotation in which the formant frequencies were calculated (to)
   - Formant spacing (dF)
   - Vocal tract length (cm) (vtl)
   - First formant value (F1)
   - First formant value (F2)
   - First formant value (F3)
   - First formant value (F4)
   - First formant measure normalized in relation to the neutral schwa vowel (F1r)
   - Second formant measure normalized in relation to the neutral schwa vowel (F2r)
   - International Phonetic Alphabet (IPA) vowel (vwl)
   - ASJP vocalic category (ASJP)
   - Emotion (Disgust, Pain or Joy) (em)
   - Speaker's primary language (lang)
   - Speaker's gender (M for Man; F for Woman; NB for Non-binary) (Sex)

Goddard, C. (2014). Interjections and emotion (with special reference to “surprise” and “disgust”). Emotion review, 6(1), 53-63.
