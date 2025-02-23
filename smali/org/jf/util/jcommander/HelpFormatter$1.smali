.class Lorg/jf/util/jcommander/HelpFormatter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lorg/jf/util/jcommander/HelpFormatter;

.field final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lorg/jf/util/jcommander/HelpFormatter;Ljava/util/regex/Pattern;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/util/jcommander/HelpFormatter$1;->this$0:Lorg/jf/util/jcommander/HelpFormatter;

    iput-object p2, p0, Lorg/jf/util/jcommander/HelpFormatter$1;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/beust/jcommander/ParameterDescription;Lcom/beust/jcommander/ParameterDescription;)I
    .registers 6

    iget-object v0, p0, Lorg/jf/util/jcommander/HelpFormatter$1;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/jf/util/jcommander/HelpFormatter$1;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/beust/jcommander/ParameterDescription;->getParameter()Lcom/beust/jcommander/WrappedParameter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beust/jcommander/WrappedParameter;->names()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/beust/jcommander/ParameterDescription;

    check-cast p2, Lcom/beust/jcommander/ParameterDescription;

    invoke-virtual {p0, p1, p2}, Lorg/jf/util/jcommander/HelpFormatter$1;->compare(Lcom/beust/jcommander/ParameterDescription;Lcom/beust/jcommander/ParameterDescription;)I

    move-result p1

    return p1
.end method
