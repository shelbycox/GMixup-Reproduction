# Scripts

Each script is titled with the format X_{DATASET_NAME}.sh. The prefix X is assigned as follows:

1) X = "lam" indicates that the script runs a G-Mixup hyperparameter search for mixup ratio $\lambda$. Each hyperparameter is tested on ten random seeds.
2) X = "res" indicates that the script runs a G-Mixup hyperparameter search for the graphon resolution res. Each hyperparameter is tested on ten random seeds.
3) X = "run_gmixup" indicates that the script runs G-Mixup for ten random seeds.
4) X = "run_vanilla" incidates that the script runs the GCN model without G-Mixup for ten random seeds.

We used the following random seeds for each test: 1314, 11314, 21314, 31314, 41314, 51314, 61314, 71314, 81314, 91314.

# G-Mixup Parameters

### data_path

The path the dataset should be downloaded to.

### model

Specifies a GNN architecture, either GIN or GCN.

### dataset

The dataset to run on. For example, REDDIT-BINARY, IMDB-BINARY, or PROTEINS.

### lr

The initial learning rate, which is cut by half every 100 epochs.

### gmixup

If True, augment graphs using G-Mixup. If False, just run the GNN on the training data.

### seed

The random seed to use.

### log_screen

If True, logs certain checkpoints in the code and prints the test, train, val loss/acc at each epoch.

### batch_size

The batch size for the GNN. We use batch_size = 128.

### num_hidden

The number of hidden layers for the GNN. We use num_hidden = 64.

### aug_ratio

The ratio (num synthetic graphs) to (num training graphs). We use aug_ratio = 0.2.

### aug_num

The number of mixed up graphons to generate. We use aug_num = 10.

### ge

The graphon estimator to use. The only option implemented is USVT (universal singular value thresholding). We use ge = USVT.

### epochs

How many epochs to train the GNN. We use epochs = 500.

### res (ADDED FOR REPRODUCTION)

Add this number to the median number of nodes in the training set to get the graphon resolution. We use res = 0 by default, and res = -15, -10, -5, 0, 5, 10, 15 for the hyperparameter search.

### lam_range

The range from which mixup ratios will be randomly chosen. We use [0.1, 0.2] by default, and lam_range = $[0, 0], [0.001, 0.001], [0.01, 0.01], [0.1, 0.1], [0.5, 0.5]$ for the hyperparameter search.  
