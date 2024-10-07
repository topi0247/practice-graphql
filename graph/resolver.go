package graph

//go:generate go run github.com/99designs/gqlgen generate
import "github.com/topi0247/practice-graphql/graph/model"

type Resolver struct{
    todos []*model.Todo
}
