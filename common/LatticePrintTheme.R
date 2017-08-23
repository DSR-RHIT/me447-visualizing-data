#-----------------------------------------------------------
#   LatticePrintTheme
#
#   my standard lattice settings for print pages
#
#   2013-08-18
#   Richard Layton
#
#-----------------------------------------------------------

# universal font setting
fontSettings = list(font=1, cex=1, fontfamily='sans')

# font size (cex) for letters as data markers 
cexABHW=0.8

mytheme = list(fontsize=list(text=8, points=5)
                    , par.xlab.text=fontSettings
                    , axis.text=fontSettings
                    , add.text=fontSettings # strip label
                    
                    , axis.line = list(col=gray6, lwd=0.5) # border, ticks
                    , strip.border = list(col=gray6, lwd=0.5)			   
                    , strip.background = list( col="gray90" )			   
                    
 		                , dot.line = list(col=gray3, lwd=0.5, lty=1)
                    
                    , layout.widths  = list(  panel=1 #1 
                                      , between=1#1
                                      , axis.panel=1 #1
                                      
                                      , left.padding=1 #1
                                      , ylab=1 #1
                                      , axis.left=1 #1

                                      , axis.right=0 #1
                                      , ylab.right=0 #1
                                      , right.padding=1 #1
                                      
                                      , ylab.axis.padding=1 #1
                                      , strip.left=1 #1
                                      
                                      , key.left=1 #1
                                      , key.right=1 #1
                                      , key.ylab.padding=0 #1
                                      , axis.key.padding=0 #1
                                      )
                                      
                      , layout.heights = list(  panel=1#1
                                      , strip=1.1#1
                                      , between=1#1
                                      , axis.panel=1#1
                                      
                                      , top.padding=1#1
                                      , main=0#1
                                      , sub=0#1
                                      , xlab.top=0#1
                                      , axis.top=0#1
                                      
                                      , axis.bottom=1#1
                                      , axis.xlab.padding=1#1
                                      , xlab=1#1
                                      , bottom.padding=1#1
                                      
                                      , xlab.key.padding=2#0
                                      , key.axis.padding=0#1
                                      , key.top=1#1
                                      , key.bottom=0#1
                                      
                                      , main.key.padding=0#1
                                      , key.sub.padding=0#1            
                                      )                    
                    )
# last line                