let quantidade = ref 0 in 
quantidade := read_int(); 
while !quantidade < 0 || !quantidade >= 100 do 
  quantidade := read_int()
  done;

let n = !quantidade - 1 in
let moedas = Array.init(n+1) (fun _ -> read_int ()) in
let passosG = Array.make 1 0 in
let passosD = Array.make 1 0 in 

let valor = ref 0 in 
valor := read_int();

let rec guloso valor = let aux = n-1 in
if !valor - moedas.(aux+1) < 0 then guloso(valor)
else
  let passo1 = if (!valor - moedas.(aux+1)) > 0 then guloso(!valor - moedas.(aux+1)) else !passos := passos-1
  
         (* aux := !valor / moedas.(i); valor := !valor - (!aux * moedas.(i)); passos := !passos + !aux *)
  done; !passos in