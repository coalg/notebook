const message = "Code in JavaScript, Live Longer!";

function sanitize(message: string) {
    const upper_message = message.toUpperCase();
    const replaced_message = upper_message.replaceAll(/[,! ]/gi, "");
    const messages = replaced_message.match(/.{1,5}/g);
    return messages?.map((x) => x.padEnd(5, "X"));
}

console.log(sanitize(message));
