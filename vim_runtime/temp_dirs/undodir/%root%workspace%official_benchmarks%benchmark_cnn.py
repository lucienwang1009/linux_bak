Vim�UnDo� �yV8F8��y�tI�
{�'L.(��pB��  	�         cuda.profile_end()  d                          Z���    _�                   ^       ����                                                                                                                                                                                                                                                                                                                                                             Z��     �  ^  `  	�        �  ^  `  	    5�_�                   _       ����                                                                                                                                                                                                                                                                                                                                                             Z��     �  ^  `  	�        print(step)5�_�                   _       ����                                                                                                                                                                                                                                                                                                                                                             Z��Z    �  ^  `  	�        tf.logging.info(step)5�_�                   _       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  ^  _          $  tf.logging.info('step: %s' % step)5�_�                   ^       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  ^  a  	�        �  ^  `  	    5�_�                   _       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  _  a  	�        �  _  a  	�    5�_�      	             _       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  _  a  	�        �  _  a  	�    5�_�      
           	  a       ����                                                                                                                                                                                                                                                                                                                                                             Z��=    �  `  e  	�        if step == 505�_�   	              
  b       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  a  c  	�            cuda.start_profile()5�_�   
                d       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  c  e  	�            cuda.end_profile()5�_�                   a       ����                                                                                                                                                                                                                                                                                                                                                             Z���    �  `  b  	�        if step == 50:    �  a  c  	�            �  a  c  	�    5�_�                   d       ����                                                                                                                                                                                                                                                                                                                                                             Z���     �  c  e  	�            cuda.profile_end()5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             Z���    �  c  e  	�            cuda.profile_strp()5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             Z�     �  &  (  	      8    cnfig.gpu_options.allow_growth = params.allow_growth5��