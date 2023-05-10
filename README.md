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

The batch size for the GNN.

### num_hidden

The number of hidden layers for the GNN.

### aug_ratio

The ratio (num synthetic graphs) to (num training graphs).

### aug_num

The number of mixed up graphons to generate.

### ge

The graphon estimator to use. The only option implemented is USVT (universal singular value thresholding).

### epochs

How many epochs to train the GNN.

### res (ADDED FOR REPRODUCTION)

Add this number to the median number of nodes in the training set to get the graphon resolution.

### lam_range

The range from which mixup ratios will be randomly chosen.
