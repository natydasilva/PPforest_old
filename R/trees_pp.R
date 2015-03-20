#' List of PP.Tree objects for bootstrap samples.
#'
#' @param data.b are the bootstrap samples. Class factor in the first column
#' @param scale is to standardize the data set, by default it is TRUE.
#' @param index to run the PPtree_plit function, options LDA or PDA, by default it is LDA.
#' @return list with the PP.Tree output for all the bootstraps samples  
#'   training set.
#' @export
#' @examples
#' training<-train_fn(iris[,5],.9)
#' data1<-iris[training,5:1]
#' iris.b <- bootstrap(data1, 5) 
#' output<-trees_pp(iris.b,scale=TRUE,size.p=.9,index="LDA") 
trees_pp <- function(data.b,scale=TRUE,size.p=.9,index='LDA', ...){
  if(scale==TRUE) data.b[,-1] <- scale(data.b[,-1])
  names(data.b)[1] <-"class"
  
  trees <- data.b %>% do(tr = PPtree_split2(index, as.formula('class~.'), data = . ,size.p=size.p))
  
  trees
}




 




