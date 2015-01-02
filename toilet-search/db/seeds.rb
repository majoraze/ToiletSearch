Bathroom.destroy_all
Client.destroy_all
Rating.destroy_all
Review.destroy_all

#Bathroom.create!([
#   {lat:-23.5537528, lng:-46.6532704, address:"Rua Frei Caneca, 617", city:"São Paulo", country:"Brasil",
#    accessibility:true, free:false, situation:"FEDENDO", poo:true, free_condition:"Tem que comprar algo na loja"},
#   {lat:-23.4164669, lng:-46.3153547, address:"Rua Bela Vista, 502", city:"Arujá", country:"Brasil",
#    accessibility:false, free:true, situation:"Limpinho", poo:false, free_condition:"Fazer carinho no cachorro"},
#   {lat:-23.5537528, lng:-46.6532704, address:"Rua Frei Caneca, 617", city:"São Paulo", country:"Brasil",
#    accessibility:true, free:false, situation:"FEDENDO", poo:true, free_condition:"Elogiar a dona bigoduda"},
#   {lat:-23.4164669, lng:-46.3153547, address:"Rua Bela Vista, 502", city:"Arujá", country:"Brasil",
#    accessibility:false, free:true, situation:"Limpinho", poo:false, free_condition:"Fazer malabares"}
#])

# Client.create!([
#    {username:"Pedro Rodrigues", facebook_id:100000854845100, facebook_token:"ASDFG"},
#    {username:"Ana Tarina", facebook_id:100000854845100, facebook_token:"ASDFG"},
#    {username:"Caio Franchi", facebook_id:100000854845100, facebook_token:"ASDFG"}
#  ])


b1 = Bathroom.create!({lat:-23.5537528, lng:-46.6532704, address:"Rua Frei Caneca, 617", city:"São Paulo",
                       country:"Brasil", accessibility:true, free:false, situation:"FEDENDO", poo:true,
                       free_condition:"Tem que comprar algo na loja"})

b2 = Bathroom.create!({lat:-23.4164669, lng:-46.3153547, address:"Rua Bela Vista, 502", city:"Arujá",
                       country:"Brasil", accessibility:false, free:true, situation:"Limpinho", poo:false,
                       free_condition:"Fazer carinho no cachorro"})

b3 = Bathroom.create!({lat:-23.419185, lng:-46.3141375, address:"Rua Primavera, 156", city:"Itaquaquecetuba",
                       country:"Brasil", accessibility:true, free:false, situation:"FEDENDO", poo:true,
                       free_condition:"Elogiar a dona bigoduda"})

b4 = Bathroom.create!({lat:-23.4164669, lng:-46.3153547, address:"Rua Bela Vista, 502", city:"Arujá",
                       country:"Brasil", accessibility:false, free:true, situation:"Limpinho", poo:false,
                       free_condition:"Fazer malabares"})


c1 = Client.create!({username:"Pedro Rodrigues", facebook_id:100000854845100, facebook_token:"ASDFG"})
c2 = Client.create!({username:"Ana Tarina", facebook_id:100000854845100, facebook_token:"ASDFG"})
c3 = Client.create!({username:"Caio Franchi", facebook_id:100000854845100, facebook_token:"ASDFG"})

Rating.create!([
   {bathroom_id:b1.id, client_id:c1.id, rating:5},
   {bathroom_id:b1.id, client_id:c1.id, rating:4},
   {bathroom_id:b2.id, client_id:c2.id, rating:2},
   {bathroom_id:b2.id, client_id:c2.id, rating:2},
   {bathroom_id:b3.id, client_id:c3.id, rating:1},
   {bathroom_id:b3.id, client_id:c3.id, rating:1}
 ])

Review.create!([
   {bathroom_id:b1.id, client_id:c1.id, review:"Puta banheiro loko", condition:"Até que passa", photo:"estrago.jpg"},
   {bathroom_id:b2.id, client_id:c2.id, review:"Funcionando direitinho", condition:"Bosta boiando", photo:"estrago.jpg"},
   {bathroom_id:b2.id, client_id:c3.id, review:"Até que usei bem", condition:"Depois que eu passei tá impraticavel rsrsrs", photo:"estrago.jpg"},
   {bathroom_id:b3.id, client_id:c3.id, review:"É aqui que eu faço o review?", condition:"Condições de que?", photo:"estrago.jpg"}
 ])