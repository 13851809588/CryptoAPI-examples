
:: ���� AES256 key �� iv
rsa-sign-file.exe -gen_aes256_key >aes256_key_iv.txt


:: ���� RSA 2048 ��Կ��
rsa-sign-file.exe -genkey >rsa_key.txt


:: AES256 �ӽ���
rsa-sign-file.exe --aes_encrypt --aes_base64_key="JUC/gPtu9fygSLbZaS/o1mxrfOGfRMkbZOOAsAaW9MU=" --aes_base64_iv="jJGbbzjndPzqgof8ou9MQA==" --aes_in_filename=test1.txt --aes_out_filename=test1.aes.encrypted.txt

rsa-sign-file.exe --aes_base64_key="JUC/gPtu9fygSLbZaS/o1mxrfOGfRMkbZOOAsAaW9MU=" --aes_base64_iv="jJGbbzjndPzqgof8ou9MQA==" --aes_in_filename=test1.aes.encrypted.txt --aes_out_filename=test1.aes.decrypted.txt


::rsa-sign-file.exe --src_filename=test1.aes.encrypted.txt
::
::rsa-sign-file.exe --enc_filename=test1.aes.encrypted.txt.enc



:: AES256 ���ܲ� RSA ǩ��

rsa-sign-file.exe --aes_rsa_sign_in_filename=test1.txt --aes_rsa_sign_out_filename=test1.aes256.signed

:: RSA ǩ����֤ �� AES256 ����

rsa-sign-file.exe --rsa_verify_aes_filename=test1.aes256.signed




pause