export const VERSION = '0.1.5'

export async function prepublish(version: string) {
  const readme = await Deno.readTextFile('./README.md')

  await Deno.writeTextFile('./README.md', readme.replace(
    /@[\d\.]+\//,
    `@${version}/`
  ))
}

