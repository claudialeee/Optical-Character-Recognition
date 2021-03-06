###############Find all the proposed correction candidates for every single word
##input: a word to correct
## output: all the proposed correct candidates

AllCorrectionCandidates <- function(word)
{
  InsCan <- InsertedCandidate(word)
  DelCan <- SearchINCandidate(word,WholeDeletionDatabase)
  SubCan <- SearchINCandidate(word,WholeSubstitionDatabase)
  AllCan <- list(Insertion=InsCan,Deletion=DelCan,Substitution=SubCan)
  return(AllCan)
  
}
