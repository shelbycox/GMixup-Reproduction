# Setup

This code is for a reproduction study of "G-Mixup: Graph Data Augmentation for Graph Classification" [1]. The code supplements the code already provided by the original authors here: [G-Mixup Github](https://github.com/ahxt/g-mixup). Follow these steps to setup the reproduction experiments.

1) Follow the instructions at [G-Mixup Github](https://github.com/ahxt/g-mixup) to setup the environment, and download the original G-Mixup files.
2) Download the files from this repository.
3) Add model_gcn.py to the src folder of the original G-Mixup repository, and replace the gmixup.py file in the original G-Mixup repository with the gmixup.py file in this repository.
4) Run the scripts provided in this repository.

[1] Han, X., Jiang, Z., Liu, N. &amp; Hu, X.. (2022). "G-Mixup: Graph Data Augmentation for Graph Classification". Proceedings of the 39th International Conference on Machine Learning, in Proceedings of Machine Learning Research 162:8230-8248. Available at: [https://proceedings.mlr.press/v162/han22c.html](https://proceedings.mlr.press/v162/han22c.html).

# Experiments and Scripts

## Result 2 (IMDB-B and REDDIT-B)

Run "run_vanilla_IMDB_B.sh" for vanilla GCN on IMDB-B dataset.
Run "run_gmixup_IMDB_B.sh" for GCN with G-Mixup on IMDB-B dataset.

Uncomment lines 192-196 of "gmixup.py" to truncate REDDIT-B dataset.
Run "run_vanilla_REDDIT_B.sh" for vanilla GCN on REDDIT-B dataset.
Run "run_gmixup_REDDIT_B.sh" for GCN with G-Mixup on REDDIT-B dataset.
Re-comment lines 192-196 of "gmixup.py".

## Additional Result 1 (PROTEINS)

Run "run_vanilla_PROTEINS.sh" for vanilla GCN on PROTEINS dataset.
Run "run_gmixup_PROTEINS.sh" for GCN with G-Mixup on PROTEINS dataset.

## Additional Result 2 (hyperparameter searches)

Run "lam_imdb_b.sh" for mixup ratio search on IMDB-B dataset.
Run "lam_proteins.sh" for mixup ratio search on PROTEINS dataset.

Run "res_imdb_b.sh" for graphon resolution search on IMDB-B dataset.
Run "res_proteins.sh" for graphon resolution search on PROTEINS dataset.

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

The range from which mixup ratios will be randomly chosen. We use [0.1, 0.2] by default, and lam_range = $[0, 0], [0.001, 0.001], [0.01, 0.01], [0.1, 0.1] [0.5, 0.5]$ for the hyperparameter search.  
