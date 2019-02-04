# Address Parser

Docker image for [libpostal](https://github.com/openvenues/libpostal) demo

# Build

```console
docker build -t address/parser .
```

# Execution

```
docker run --rm -it address/parser src/address_parser
Loading models...

Welcome to libpostal's address parser.

Type in any address to parse and print the result.

Special commands:
.exit to quit the program

> The Book Club 100-106 Leonard St Shoreditch London EC2A 4RH, United Kingdom

Result:

{
  "house": "the book club",
  "house_number": "100-106",
  "road": "leonard st",
  "suburb": "shoreditch",
  "city": "london",
  "postcode": "ec2a 4rh",
  "country": "united kingdom"
}

> 公司台北市敦化南路2段180號6樓

Result:

{
  "house": "公司",
  "city": "台北市",
  "road": "敦化南路2段",
  "house_number": "180號",
  "level": "6樓"
}

```
 
