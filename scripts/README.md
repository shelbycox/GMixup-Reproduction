# Scripts

Each script is titled with the format X_{DATASET_NAME}.sh. The prefix X is assigned as follows:

1) X = "lam" indicates that the script runs a G-Mixup hyperparameter search for mixup ratio $\lambda$. Each hyperparameter is tested on ten random seeds.
2) X = "res" indicates that the script runs a G-Mixup hyperparameter search for the graphon resolution res. Each hyperparameter is tested on ten random seeds.
3) X = "run_gmixup" indicates that the script runs G-Mixup for ten random seeds.
4) X = "run_vanilla" incidates that the script runs the GCN model without G-Mixup for ten random seeds.

We used the following random seeds for each test: 1314, 11314, 21314, 31314, 41314, 51314, 61314, 71314, 81314, 91314.
