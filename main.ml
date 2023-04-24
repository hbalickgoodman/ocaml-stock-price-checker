(*scrap using
1.  cd /Users/admin/lambdaSoupScraping/s/_build/default/bin
2.   curl -L "https://www.zacks.com/stock/quote/SMYBOL" | ./main.exe
   *)
module StockPricePrinter = struct


open Soup
let () =
  let soup = read_channel stdin |> parse in
  let () = match (soup $ ".last_price" |> trimmed_texts) with s::_ -> s ^ "\n" |> print_string
  | [] -> print_string "bro\n" in
   "hello" |> write_channel stdout
end
(*
let soup = read_file "/Users/admin/lambdaSoupScraping/s/bin/spy.html" |>parse;;
(* Print the page title. *)
soup $ "title" |> to_string |> print_string;;


(*Prints the price of a symbol*)
match (soup $ ".symbol-page-header__pricing-price" |> leaf_text) with
| None -> "not a symbol"
|(Some x) -> x;;

(* Print the targets of all links. *)
soup $$ "a[href]"
|> iter (fun a -> print_endline (R.attribute "href" a));

(* Find the first unordered list. *)
let ul = soup $ "ul" in

(* Print the contents of all its items. *)
ul $$ "li"
|> iter (fun li ->
  trimmed_texts li |> String.concat "" |> print_endline);;

  *)
