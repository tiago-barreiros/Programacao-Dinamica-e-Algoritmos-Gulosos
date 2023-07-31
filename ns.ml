let numero = ref 0 in 
  numero := read_int(); 
  while !numero < 0 || !numero >= 100 do 
    numero := read_int(); 
  done;
  let n = !numero - 1 in
  let moeda = Array.init(n+1) (fun _ -> read_int()) in


let rec gulosa moedas troco count indice m =
  if(troco = 0) then count - 2 else 
    let valortrocar = if moeda.(!indice - 1) <= troco then troco - moeda.(!indice - 1) else troco in 
    if (troco=valortrocar && !indice - 1 > 0) then indice := !indice - 1; print_int !indice;
    gulosa moedas valortrocar (count + 1) indice m; 
  in

  let indice = ref (Array.length moeda) in


    let dinamico moeda troco m = 
      let troca_moeda = Array.make (troco + 1) 0 in
      moeda.(0) <- 0;
      for i=1 to troco do 
        troca_moeda.(i) <- max_int; 
      done;
         for i=1 to troco do 
          for j=0 to m-1 do  
            let min = ref 0 in 
             if (moeda.(j) <= i) then 
                min := troca_moeda.(i-moeda.(j));
             if (moeda.(j) <= i) then 
              let sub_res = troca_moeda.(i-moeda.(j)) in  
                if (sub_res <> max_int && !min + 1 < troca_moeda.(i)) then troca_moeda.(i) <- !min + 1; 
                
      done; 
    done; 
      Array.get troca_moeda (troco) in


let count = ref 0 in
for i = 0 to 1000 do 
while (!count < moeda.(n-1)*2+1) do 
  let gul = gulosa moeda i !count indice (n+1) in
  let din = dinamico moeda i (n+1) in
  if (din <> gul) then count := moeda.(n-1) * 2 + 1; 
  count := !count + 1;
done;
done;
if(!count = (moeda.(n-1) * 2 + 2)) then Printf.printf "%d\n" !count else Printf.printf "YES\n"