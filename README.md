we're doing sky segmentation using mobilenet. we're using geopose3k (has alpine data) + synthetic data of our region from dems (we add fog textures etc). we'll use sliding window euclidean distance + dynamic time warping with sakoe chiba band and early abandoning and pruning. for sliding window euclidean, kinda like mass we use fft cross correlation stuff (not z normalized tho). we use copernicus glo 30m. we dont use faiss (dont say it like this please). for horizon calculation, we use HORAYZON (ray casting) also we do it thrice at different max search radii to accouint for global local restricted horizon in case of fog. btw we use vector index to store it (no faiss or some vector index library probably no).  we use canny edge detection as fallback. for verification, we use google street view. we ve chosen a region (Khumbu) whose trails do have street view. some parts might have fog but there seems to be abundant data. we wont directly validate on panorama but break into pictures then validate. also we verify using train/test split on synthetic data.

    Northwest (NW):

            
    86.582∘E
    86.582∘E

          

    ,

            
    28.041∘N
    28.041∘N

          

    Northeast (NE):

            
    86.989∘E
    86.989∘E

          

    ,

            
    28.041∘N
    28.041∘N

          

    Southwest (SW):

            
    86.582∘E
    86.582∘E

          

    ,

            
    27.770∘N
    27.770∘N

          

    Southeast (SE):

            
    86.989∘E
    86.989∘E

          

    ,

            
    27.770∘N
    27.770∘N

          

Verification

    Width:

            
    (86.989−86.582)×98.37 km/deg≈40.0 km
    (86.989−86.582)×98.37 km/deg≈40.0 km

          

    Height:

            
    (28.041−27.770)×110.82 km/deg≈30.0 km
    (28.041−27.770)×110.82 km/deg≈30.0 km

          