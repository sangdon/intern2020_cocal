for i in {1..7}
do
    screen -dm bash -c "CUDA_VISIBLE_DEVICES=$i python3 main.py --exp_name summary_m2u_selfcon_svhnaug_advtr_svhnaug_$i --data.src MNIST --data.tar USPS --data.aug_init svhnspec --data.aug svhnspec --training_type selfcon --train.init_advtr"
done
