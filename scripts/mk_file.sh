#!/bin/bash
#
# Make new file, following the Template.md format

usage()
{
    echo "Usage: ./scripts/mk_file.sh -a <Author> -t <Title> -l <Link>  -c <# of Chapters>"
}

if [[ $# -ne 8 ]]; then
    usage
    exit 1;
fi

while getopts 'a:l:c:t:' flag; do
case "${flag}" in
    a) Author="${OPTARG}" ;;
    c) Chapters="${OPTARG}" ;;
    l) Link="${OPTARG}" ;;
    t) Title="${OPTARG}" ;;
    *) error "Unexpected option ${flag}"
        usage
esac
done
TEMPLATE="Template.md"
NEW_FILE="${Title}.md"

cp ${TEMPLATE} ${NEW_FILE}
sed -i "" "s|Title|${Title}|g" ${NEW_FILE}
sed -i "" "s|Link|${Link}|g" ${NEW_FILE}
sed -i "" "s|Author|${Author}|g" ${NEW_FILE}

for (( i = 1; i <= ${Chapters}; i++ )) ; do
    echo "## Chapter ${i}" >> ${NEW_FILE}
done

echo "Finished writing to ${NEW_FILE}"

./scripts/generate_toc.sh ${NEW_FILE}
