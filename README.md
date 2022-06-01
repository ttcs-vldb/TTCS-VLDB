# README for EquiTree

This is the executable for EquiTree.

## Quick experience

For Windows, run `run_me.bat` in the `Windows` directory.

For Linux, run `run_me.sh` in the `Linux` directory. You may need to grant it executable permission.

## Usage

This is a command line program with the following parameters.

```
Usage: BasicExp [options] graph_file
Options:
--equitree-cs  <arg>     Perform community search on EquiTree with given file
--cs-result <arg>        Print community search results to file
--equitree-ins <arg>     Perform insertion algorithm on EquiTree with given file
--equitree-del <arg>     Perform deletion algorithm on EquiTree with given file
--maint-result <arg>     Print EquiTree after insertion/deletion to file
```

The `<arg>` in commands are file paths.

## File format

`graph_file` should be an edge list.

Files for community search follow the format below:

```
<number of query vertices>
<query vertex 1, trussness 1>
<query vertex 2, trussness 2>
...
```

Check `example.query` in `Data` directory for an example.

Files for insertion or deletion follow the format below:

```
<number of edges>
<edge 1 source, edge 1 destination>
<edge 2 source, edge 2 destination>
...
```

Check `example.ins` in `Data` directory for an example.

Output files for community search follow the format below:

```
<trussness 1, query vertex 1, number of communities>
<number of edges in community 1>
<edge 1 source, edge 1 destination>
<edge 2 source, edge 2 destination>
...
<number of edges in community 2>
<edge 1 source, edge 1 destination>
<edge 2 source, edge 2 destination>
...
<trussness 2, query vertex 2, number of communities>
...
```

Output files for maintenance follow the format below:

```
<number of tree edges>
<tree edge 1 source, tree edge 1 destination>
<tree edge 2 source, tree edge 2 destination>
...
<number of tree nodes>
<node number 1, number of edges in node 1>
<graph edge 1 source, graph edge 1 destination>
<graph edge 2 source, graph edge 2 destination>
...
<node number 2, number of edges in node 2>
...
```

## Notice

1. You cannot perform insertion and deletion at the same time. If you give both the parameters, only deletion will be performed.

2. The program will always leave a dump file at the same directory of the executable. Also, if the file name of the graph is the same as given in the file name of the dump file, the program will not do construction for the graph and only read the dump.