library(scales)
library(ggtern)
d <- read.table('alloy_czts.dat', col.names = c("CTS", "c314", "ZnS", "E"))

pdf( "dH_mix_czts.pdf", width=4.5, height=4, useDingbats=FALSE )
par( mai=c(0.65, 0.65, 0.1, 0.05), mgp=c(2, 0.5, 0), tck=-0.03 )
#png("myplot.png", width=4, height=4, units="in", res=300)
ggtern(data=data.frame(a=d$CTS, x=d$c314, c=d$ZnS, E=d$E), aes(a, x, c)) +
geom_point(aes(fill = E),  pch=21, size=2.5) + 
#scale_fill_gradient2(low="blue", high="red") +
scale_fill_gradient2(low="blue", high="red", limits=c(-25, 15)) +
labs(T="",L="",R="")+
theme_bw() 

dev.off()


