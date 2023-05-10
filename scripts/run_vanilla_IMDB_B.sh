
for seed in 1314 11314 21314 31314 41314 51314 61314 71314 81314 91314
do 
    CUDA_VISIBLE_DEVICES=0  python -u ./src/gmixup.py --data_path . --model GCN --dataset IMDB-BINARY \
        --lr 0.01 --gmixup False --seed=$seed  --log_screen True --batch_size 128 --num_hidden 64 \
        --aug_ratio 0.2 --aug_num 10  --ge USVT --epoch 500 --res=0 --lam_range="[0.1, 0.2]"
done
