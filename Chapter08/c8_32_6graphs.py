import numpy as np
import matplotlib.pyplot as plt
import scipy.cluster.hierarchy as hac
a = np.array([[0.11, 2.5],[1.45, 0.40],
              [0.3,  1.1],[0.9 , 0.8],
              [0.5,  0.01],[0.1 , 0.5],
              [0.6,  0.5],[2.6,  2.1],
              [2.3,  3.2],[3.1,  2.2],
              [3.2,  1.3]])
name='possible\n<- knee point'
yName='{}\ncluster distance'
title='Screeplot{}'
t1=['#2200CC','#D9007E','#FF6600','#FFCC00']
t2=['#ACE600','#0099CC','#8900CC','#FF0000']
t3=['#FF9900' ,'#FFFF00','#00CC01' ,'#0055CC']
fig, axes23 = plt.subplots(2, 3)
for method, axes in zip(['single','complete'], axes23):
    z = hac.linkage(a, method=method)
    axes[0].plot(range(1, len(z)+1), z[::-1, 2])
    knee = np.diff(z[::-1, 2], 2)
    axes[0].plot(range(2, len(z)), knee)
for method, axes in zip(['single','complete'], axes23):
    z = hac.linkage(a, method=method)
    axes[0].plot(range(1, len(z)+1), z[::-1, 2])
    knee = np.diff(z[::-1, 2], 2)
    axes[0].plot(range(2, len(z)), knee)
    num_clust1 = knee.argmax() + 2
    knee[knee.argmax()] = 0
    num_clust2 = knee.argmax() + 2
    axes[0].text(num_clust1, z[::-1, 2][num_clust1-1], name)
    part1 = hac.fcluster(z, num_clust1, 'maxclust')
    part2 = hac.fcluster(z, num_clust2, 'maxclust')
    clr = t1+t2+t3
    for part,ax in zip([part1, part2], axes[1:]):
        for cluster in set(part):
            ax.scatter(a[part==cluster,0],a[part==cluster,1], 
                       color=clr[cluster])
    m = '\n(method: {})'.format(method)
    plt.setp(axes[0],title=title.format(m),xlabel='partition',
             ylabel=yName.format(m))
    plt.setp(axes[1], title='{} Clusters'.format(num_clust1))
    plt.setp(axes[2], title='{} Clusters'.format(num_clust2))
plt.tight_layout()
plt.show()
