type Marca = {
    id: number;
    descricao: string;
};

type Categoria = {
    tipo: string;
};

const marca:Marca = {
    id: 1,
    descricao: 'GM',
};

type marcaCategoria = Marca & Categoria;
const exemplo: marcaCategoria = {
    id: 2,
    descricao: 'Fiat',
    tipo: "Suv"
};

console.log(exemplo);