import os 


class nextstrain :

    def precess(input_dir, virus_name):
        if virus_name =='monkeypox':
            os.system(f"cd {input_dir}/data ; sed -i -e 's/XXXX/2017/g' metadata.tsv ") # year ref
            os.system(f"cd {input_dir}/data ;  sed -i -e 's/XX/01/g' metadata.tsv ")
            os.system(f'cd {input_dir} ; nextstrain build --cpus 1 ./ --configfile config/config_mpxv.yaml')
        else : 
            os.system (f'cd {input_dir} ; nextstrain build --cpus 1 ./ ')
    

    def view():
        os.system('nextstrain view auspice_res')
        
