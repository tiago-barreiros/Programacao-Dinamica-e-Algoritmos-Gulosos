let quantidade = ref 0 in 
quantidade := read_int(); 
while !quantidade < 0 || !quantidade >= 100 do 
  quantidade := read_int()
  done;

let n = !quantidade - 1 in
let moeda = Array.init(n+1) (fun _ -> read_int ()) in

let lixo = ref 1000000 in
let x = ref 0 in
let valor = ref 6 in
for i = n downto 0 do
let rec guloso valor = 
  for i = n downto 0 do
  if moeda.(i) <= 0 && moeda.(i) > 500 then !lixo else
  if valor - moeda.(i) > 0 then guloso (valor - moeda.(i)) else guloso (valor)
  
  done; !(valor - moeda.(i))
  (*passos <- array.(i)*)
  (*
  let valor = moeda.(n) in
  let valor_absoluto = ref 1000000 in
  let rec dinamico = 
    if(valor = 0) then 0 else n in
    for i=1 to 500 do  (if (i - moeda.(i) >= 0) then valor_absoluto :=  !valor_absoluto - moeda.(i - moeda.(i)) + 1) done; 
  let resultado n = if dinamico = valor then Printf.printf "\nYES\n" else Printf.printf "\n%d\n" valor in resultado(n);;
  *)