accuracy = 1e-09
name = 'Distance'
data_type = 'double'
km_train = [1, 0.0379564608, 0.131371193, 0.178222104, 0.0690191121, 0.0676498504, 0.143029215, 0.059138432, 0.0529251878, 0.1237478, 0.0338989941;0.0379564608, 1, 0.0942494551, 0.068764627, 0.0459663442, 0.0266893506, 0.092953733, 0.0276420809, 0.0535827753, 0.0924289973, 0.0303388314;0.131371193, 0.0942494551, 1, 0.243919609, 0.098084283, 0.0519394684, 0.345318888, 0.092019753, 0.0732693984, 0.275275073, 0.054005892;0.178222104, 0.068764627, 0.243919609, 1, 0.101051471, 0.0988965491, 0.350042932, 0.0947669314, 0.058776227, 0.25157536, 0.046126332;0.0690191121, 0.0459663442, 0.098084283, 0.101051471, 1, 0.0339550984, 0.134785719, 0.057358843, 0.0515880806, 0.0814600173, 0.020691317;0.0676498504, 0.0266893506, 0.0519394684, 0.0988965491, 0.0339550984, 1, 0.091500003, 0.13238779, 0.0405538038, 0.0924815871, 0.0809908585;0.143029215, 0.092953733, 0.345318888, 0.350042932, 0.134785719, 0.091500003, 1, 0.0923678358, 0.0771586867, 0.208320018, 0.0582874643;0.059138432, 0.0276420809, 0.092019753, 0.0947669314, 0.057358843, 0.13238779, 0.0923678358, 1, 0.0417170294, 0.0941754756, 0.0471371033;0.0529251878, 0.0535827753, 0.0732693984, 0.058776227, 0.0515880806, 0.0405538038, 0.0771586867, 0.0417170294, 1, 0.0647980316, 0.034699396;0.1237478, 0.0924289973, 0.275275073, 0.25157536, 0.0814600173, 0.0924815871, 0.208320018, 0.0941754756, 0.0647980316, 1, 0.0675108013;0.0338989941, 0.0303388314, 0.054005892, 0.046126332, 0.020691317, 0.0809908585, 0.0582874643, 0.0471371033, 0.034699396, 0.0675108013, 1]
data_train = [0.304807869, 0.729751753, 0.59179399, 0.302872975, 0.797463334, 0.116631389, 0.426700346, 0.0673555986, 0.815903829, 0.51897482, 0.958337912;0.083038438, 0.737000257, 0.929763904, 0.326395061, 0.915158767, 0.320692199, 0.894408074, 0.556167693, 0.00659611233, 0.330004227, 0.0334607731;0.398751626, 0.699166514, 0.506266813, 0.400596794, 0.809738407, 0.0243908521, 0.383633401, 0.61616666, 0.790715611, 0.804035347, 0.0111279156;0.257425435, 0.186384158, 0.240977773, 0.412571009, 0.438201206, 0.8472432, 0.3437487, 0.885219941, 0.643569984, 0.291329855, 0.490478735;0.254989565, 0.0567719252, 0.718841052, 0.900008738, 0.947271077, 0.257081944, 0.516454306, 0.299225138, 0.307088585, 0.454454379, 0.0935283094;0.421803748, 0.00452592472, 0.971056261, 0.348303376, 0.218183039, 0.510952412, 0.325417058, 0.722823522, 0.0136583493, 0.963287352, 0.921280225;0.657783282, 0.332001106, 0.692759556, 0.542075236, 0.200756373, 0.281095701, 0.355218659, 0.56226299, 0.0458655127, 0.711248592, 0.398385194;0.36673553, 0.67090942, 0.544065563, 0.782713739, 0.0563427093, 0.369109454, 0.634482796, 0.104819084, 0.427598332, 0.756665078, 0.830213614;0.0286959516, 0.383064135, 0.997516779, 0.535166444, 0.0572314529, 0.624471907, 0.893614539, 0.672372688, 0.778919071, 0.364416725, 0.907532267;0.799946411, 0.937768907, 0.95971704, 0.916536357, 0.705199239, 0.454833822, 0.842954713, 0.171476752, 0.795210867, 0.723201558, 0.13588927;0.262432813, 0.0387750199, 0.271248516, 0.274368417, 0.3267767, 0.66444499, 0.353886108, 0.336667448, 0.251639723, 0.524346295, 0.669669028]
feature_class = 'simple'
kernel_arg1_distance = 'CanberraMetric'
data_test = [0.636554323, 0.126312646, 0.37651015, 0.175358118, 0.286997604, 0.0375434772, 0.465142005, 0.620725344, 0.861081063, 0.449349923, 0.728646001, 0.843187718, 0.814233616, 0.56302191, 0.113997086, 0.497191736, 0.875943233;0.805607376, 0.593071444, 0.510120323, 0.653231394, 0.708656428, 0.783653266, 0.264603828, 0.980897533, 0.357792227, 0.630005024, 0.795719498, 0.511383343, 0.781463508, 0.618128628, 0.273967232, 0.757944357, 0.734486295;0.490065854, 0.393854393, 0.0659768677, 0.305071773, 0.00519006761, 0.245037369, 0.0842664877, 0.0952463963, 0.89744796, 0.995775484, 0.599891547, 0.515648114, 0.192468859, 0.0157898055, 0.512723744, 0.335417333, 0.800623568;0.326165053, 0.32103303, 0.826586534, 0.954910166, 0.192031188, 0.117080883, 0.483830957, 0.00376871255, 0.891195877, 0.164628975, 0.14844374, 0.998675583, 0.822971185, 0.161221798, 0.590221702, 0.891765125, 0.538918544;0.991895508, 0.865236868, 0.359724792, 0.875672274, 0.19400933, 0.946497133, 0.591890058, 0.76581157, 0.946886993, 0.393767346, 0.574089399, 0.605269766, 0.36920178, 0.679665395, 0.893367146, 0.0230648195, 0.475660177;0.583984277, 0.836695197, 0.0601442124, 0.959991706, 0.987875279, 0.691941356, 0.725705383, 0.109778711, 0.897679903, 0.516356853, 0.419993708, 0.127052823, 0.656713815, 0.479564946, 0.989989153, 0.0121531508, 0.750200628;0.126622599, 0.052253773, 0.542106248, 0.376213815, 0.352260628, 0.706925303, 0.778486631, 0.153968048, 0.840960198, 0.0830701783, 0.426996396, 0.0834509124, 0.938409127, 0.439921986, 0.929407655, 0.734996246, 0.494880485;0.942578827, 0.680565368, 0.436117519, 0.561839801, 0.0010293725, 0.269348581, 0.571635401, 0.994396008, 0.0778841649, 0.0454358368, 0.0715626775, 0.968546604, 0.857888177, 0.41004568, 0.618333098, 0.760347729, 0.610365083;0.960214549, 0.635147829, 0.681621966, 0.539932998, 0.259957704, 0.530396049, 0.738778128, 0.838233526, 0.547988855, 0.979697608, 0.506316937, 0.00645262703, 0.192894704, 0.503334661, 0.232416327, 0.417610219, 0.259805999;0.893212916, 0.190777372, 0.64242071, 0.574095999, 0.847350824, 0.594976819, 0.780847927, 0.0614583371, 0.250073735, 0.985788027, 0.832737069, 0.291270393, 0.4007584, 0.360454931, 0.446291452, 0.266861273, 0.5626705;0.338291759, 0.810283422, 0.136747771, 0.658236958, 0.532518111, 0.482283614, 0.623368092, 0.875543907, 0.575812483, 0.554114947, 0.0673809212, 0.307892847, 0.243751438, 0.0618868861, 0.676485899, 0.00735361555, 0.0236807892]
km_test = [0.0761056463, 0.0429642743, 0.0703088433, 0.0642421124, 0.0545692911, 0.0688351767, 0.0952654386, 0.0138931119, 0.0383632335, 0.0566296625, 0.072184356, 0.045422238, 0.0833733788, 0.0567924197, 0.0752434502, 0.026376084, 0.0611089938;0.0796079325, 0.0334281584, 0.0519973403, 0.051045197, 0.0490236015, 0.0384326008, 0.0391739542, 0.0224827196, 0.0303789875, 0.0501246984, 0.133182112, 0.0311343769, 0.0509950089, 0.0814528324, 0.0341907129, 0.106312975, 0.13947;0.345457755, 0.11591921, 0.0953128139, 0.1769555, 0.0728077986, 0.158399888, 0.204739914, 0.0542513172, 0.110678834, 0.13235685, 0.169627654, 0.067180703, 0.146086641, 0.127138092, 0.13607165, 0.0529108526, 0.155756477;0.241895621, 0.135698981, 0.1330429, 0.216134456, 0.0603009288, 0.130822434, 0.220641653, 0.0432758273, 0.112481763, 0.0822960036, 0.131574507, 0.080406757, 0.126782342, 0.107969443, 0.185232722, 0.0606268946, 0.119828892;0.153716908, 0.0432416221, 0.0430082237, 0.0641874809, 0.0397640322, 0.0554792124, 0.0505546752, 0.0379586429, 0.105973715, 0.115141951, 0.140483691, 0.0977880106, 0.0734911191, 0.0452750308, 0.053254757, 0.0215078709, 0.0941978058;0.0592732061, 0.0976465979, 0.130877405, 0.186971997, 0.0722420304, 0.0849024185, 0.156659502, 0.0346975217, 0.083861226, 0.0607963258, 0.0430433974, 0.0384540904, 0.0819546141, 0.11503241, 0.142343696, 0.0304750777, 0.0601053413;0.356295948, 0.130946992, 0.133142119, 0.199972411, 0.0806142278, 0.121237574, 0.20685288, 0.0734730693, 0.0675804853, 0.153230361, 0.174485138, 0.0884955596, 0.134453384, 0.11787921, 0.0974869862, 0.0596769574, 0.147000621;0.0709071377, 0.117437511, 0.0866935136, 0.136243168, 0.0448728086, 0.120681224, 0.0786729113, 0.0233840635, 0.194289191, 0.0797995436, 0.0893951196, 0.0555719899, 0.102258044, 0.0535761507, 0.109145612, 0.0433115568, 0.0830754714;0.0795195573, 0.0427915058, 0.0776332755, 0.041129901, 0.0178781208, 0.0240212662, 0.0544641737, 0.0220007146, 0.0424437254, 0.0614745768, 0.0423648139, 0.0602228237, 0.054172684, 0.0280876954, 0.0331200532, 0.0367685054, 0.059485333;0.169820441, 0.116846387, 0.0922344663, 0.170991126, 0.103974367, 0.123931715, 0.283371149, 0.0356661638, 0.185048041, 0.130721232, 0.117261688, 0.0632337947, 0.154798699, 0.0982798156, 0.236593013, 0.0618138527, 0.219770142;0.0526659398, 0.0536209509, 0.0357742796, 0.0603508298, 0.0502069969, 0.0264535062, 0.09015456, 0.0376435259, 0.0599253409, 0.0280515654, 0.0239475516, 0.0263720498, 0.0548275903, 0.0571002951, 0.0485552248, 0.0284593069, 0.0495161099]
data_class = 'rand'
kernel_arg0_width = 1.7
feature_type = 'Real'