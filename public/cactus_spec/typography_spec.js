// See 
// http://webguidelines.postennorge.no/grafisk/typografi

Cactus.expect('h1', 'font-family').toContain('Arial')
Cactus.expect('h1', 'font-size').toEqual('30px')
Cactus.expect('h1', 'color').toHaveColor('#4d4f53')

Cactus.expect('h2', 'font-family').toContain('Arial')
Cactus.expect('h2', 'font-size').toEqual('22px')
Cactus.expect('h2', 'color').toHaveColor('#4d4f53')

Cactus.expect('h3', 'font-family').toContain('Arial')
Cactus.expect('h3', 'font-size').toEqual('14px')
Cactus.expect('h3', 'color').toHaveColor('#4d4f53')

Cactus.expect('h4', 'font-family').toContain('Arial')
Cactus.expect('h4', 'font-size').toEqual('11px')
Cactus.expect('h4', 'color').toHaveColor('#4d4f53')
Cactus.expect('h4', 'text-transform').toEqual('uppercase')

Cactus.expect('p', 'font-family').toContain('Arial')
Cactus.expect('p', 'font-size').toEqual('14px')
Cactus.expect('p', 'color').toHaveColor('#4d4f53')

