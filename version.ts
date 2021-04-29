export const VERSION = '0.1.3'

export async function prepublish(version: string) {
  const readme = await Deno.readTextFile('./README.md')

  await Deno.writeTextFile('./README.md', readme.replace(
    /@[\d\.]+\//,
    `@${version}/`
  ))
}

