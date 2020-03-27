```
$ git status 
On branch 2-modify-3-6
Your branch is behind 'localRepository/2-modify-3-6' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	renamed:    04_DeepLearning_from_Scratch/3_ch3/6_MNIST/1_MNIST_dataset.ipynb -> "04_DeepLearning_from_Scratch/3_ch3/3.6_\354\206\220\352\270\200\354\224\250_\354\210\253\354\236\220_\354\235\270\354\213\235/3.6.1_MNIST_dataset.ipynb"
	renamed:    04_DeepLearning_from_Scratch/3_ch3/6_MNIST/2_predict_with_ANN_forward_propagation.ipynb -> "04_DeepLearning_from_Scratch/3_ch3/3.6_\354\206\220\352\270\200\354\224\250_\354\210\253\354\236\220_\354\235\270\354\213\235/3.6.2_predict_with_ANN_forward_propagation.ipynb"
	renamed:    04_DeepLearning_from_Scratch/3_ch3/6_MNIST/3_predict_with_ANN_forward_propagation_with_batch.ipynb -> "04_DeepLearning_from_Scratch/3_ch3/3.6_\354\206\220\352\270\200\354\224\250_\354\210\253\354\236\220_\354\235\270\354\213\235/3.6.3_predict_with_ANN_forward_propagation_with_batch.ipynb"
	new file:   99_Utility/03_modify_number_of_file_on_README.sh
	modified:   99_Utility/change_A_to_B.txt
	modified:   README.md

$ git config --global core.quotepath
$ git config --global core.quotepath false

$ git status 
On branch 2-modify-3-6
Your branch is behind 'localRepository/2-modify-3-6' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	renamed:    04_DeepLearning_from_Scratch/3_ch3/6_MNIST/1_MNIST_dataset.ipynb -> 04_DeepLearning_from_Scratch/3_ch3/3.6_손글씨_숫자_인식/3.6.1_MNIST_dataset.ipynb
	renamed:    04_DeepLearning_from_Scratch/3_ch3/6_MNIST/2_predict_with_ANN_forward_propagation.ipynb -> 04_DeepLearning_from_Scratch/3_ch3/3.6_손글씨_숫자_인식/3.6.2_predict_with_ANN_forward_propagation.ipynb
	renamed:    04_DeepLearning_from_Scratch/3_ch3/6_MNIST/3_predict_with_ANN_forward_propagation_with_batch.ipynb -> 04_DeepLearning_from_Scratch/3_ch3/3.6_손글씨_숫자_인식/3.6.3_predict_with_ANN_forward_propagation_with_batch.ipynb
	new file:   99_Utility/03_modify_number_of_file_on_README.sh
	modified:   99_Utility/change_A_to_B.txt
	modified:   README.md
```
