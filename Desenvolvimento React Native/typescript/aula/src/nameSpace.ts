namespace terrestre {
    export interface animal {
        especie: string;
        nome: string;
    }
}

namespace aquatico {
    interface animal {
        especie: string;
        nome: string;
    }
}

let a: terrestre.animal = {
    especie: "cachorro",
    nome: "Rex",
};

console.log(a);
