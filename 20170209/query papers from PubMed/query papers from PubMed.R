#  find papers in PubMed

library(RISmed)
morapro <- EUtilsSummary("Mora, Antonio[Full Author Name]", type="esearch", db="pubmed")
class(morapro)
str(morapro)
title <- ArticleTitle(EUtilsGet(morapro))
title

# find papers about "transcription factories", authors are either Peter Cook or Peter Fraser

tfpeter <- EUtilsSummary("(transcription factors[all fields]) AND (Peter Cook[author] OR Peter Fraser[author])", type="esearch", db="pubmed")
class(tfpeter)
str(tfpeter)