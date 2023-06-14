#!/bin/bash

python3 run_cl.py \
    --output_dir output/mwp-cl-monolingual-en-roberta-neural-sim-two \
    --bert_pretrain_path pretrained_models/roberta-base \
    --model_reload_path output/mwp-cl-monolingual-en-roberta-neural-sim/epoch_35 \
    --data_dir data \
    --contra_pair pairs/MathQA-MathQA-sample.json \
    --train_file MathQA_bert_token_train.json \
    --dev_file_1 MathQA_bert_token_val.json \
    --test_file_1 MathQA_bert_token_test.json \
    --dev_file_2 MathQA_bert_token_val.json \
    --test_file_2 MathQA_bert_token_test.json \
    --batch_size 32 \
    --learning_rate 5e-5 \
    --n_epochs 15 \
    --n_save_ckpt 3 \
    --n_val 5 \
    --embedding_size 128 \
    --hidden_size 768 \
    --beam_size 3 \
    --contra_loss_func margin \
    --contra_loss_margin 0.15 \
    --contra_common_tree_pair \
    --neg_sample 1 \
    --neg_sample_from_pair_file \
    --alpha 5 \
    --alpha_warmup \
    --warmup_begin 1000 \
    --warmup_end 6000 \
    --dropout 0.5 \
    --seed 42 \
    --device 'cuda:0'
