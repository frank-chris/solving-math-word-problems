# Solving Math Word Problems Using Language Models and Contrastive Loss 📖

## Details 📃
1. The code provided is for the best model: RoBERTa with NeuralSim Loss. Other models based on BERT, DistilBERT, etc., can be used with the same codebase by cloning the Hugging Face model repo into the `pretrained_models` folder (for example, https://huggingface.co/distilbert-base-uncased/tree/main) and adding [num] and [NUM] to the vocab file like below:
 ```
[PAD]
[num]
[NUM]
[unused3]
[unused4]
[unused5]
[unused6]
...
```
2. The `data` folder contains the dataset files. The `pretrained_models` folder is for storing the modified Hugging Face models (like RoBERTa), and the `src` folder contains the code.
3. Logs and checkpoints will be saved in a folder named `output` that will be created automatically during training/testing.
4. The files `train_cl.sh` and `train_ft.sh` are scripts to run the training/testing as explained in the **Running experiments** section below.
5. The files `run_ft.py` and `run_cl.py` also contain code.   

## Requirements⚡

* Python 3 
* PyTorch 1.8 (with CUDA)
* Transformers 4.9.1 

## Running experiments ▶️

1. Download `pytorch_model.bin` from https://huggingface.co/roberta-base/tree/main and place it in `pretrained_models/roberta-base/`.
2. To run the contrastive loss step (including testing), run `./train_cl.sh` (make sure it is executable on the filesystem).

   ```sh
   ./train_cl.sh
   ```
3. To run the fine-tuning step (including testing), run `./train_ft.sh` (make sure it is executable on the filesystem).

   ```sh
   ./train_ft.sh
   ```
   Parameters like learning rate, epochs, batch size, etc., can be changed in `train_cl.sh` and `train_ft.sh`.
4. Checkpoints and logs will be saved in `output/`.
5. If you only want to test the model (can be done only after a few checkpoints are saved during training), use the `--only_test` option in `train_cl.sh` or `train_ft.sh`.

## Team members ✏️

Chris Francis (cfrancis@ucsd.edu), Harshil Jain (hjain@ucsd.edu), Rohit Ramaprasad (rramaprasad@ucsd.edu), Sai Sree Harsha (ssreeharsha@ucsd.edu)

## References 🔖
[1] Li, Z., Zhang, W., Yan, C., Zhou, Q., Li, C., Liu, H., & Cao, Y. (2021). Seeking patterns, not just memorizing procedures: Contrastive learning for solving math word problems. arXiv preprint arXiv:2110.08464.

Our code is based on the [PyTorch implementation](https://github.com/zwx980624/mwp-cl) of the work by Li et al [1].
