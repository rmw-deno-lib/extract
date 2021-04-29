export const VERSION = '0.1.6'

export async function prepublish(version: string) {
  const readme = await Deno.readTextFile('./README.md')

  await Deno.writeTextFile('./readme.make.md', readme.replace(
    /@[\d\.]+\//,
    `@${version}/`
  ))
}

