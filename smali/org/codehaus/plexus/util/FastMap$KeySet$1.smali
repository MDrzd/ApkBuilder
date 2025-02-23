.class Lorg/codehaus/plexus/util/FastMap$KeySet$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

.field final synthetic this$1:Lorg/codehaus/plexus/util/FastMap$KeySet;


# direct methods
.method constructor <init>(Lorg/codehaus/plexus/util/FastMap$KeySet;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->this$1:Lorg/codehaus/plexus/util/FastMap$KeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->this$1:Lorg/codehaus/plexus/util/FastMap$KeySet;

    iget-object p1, p1, Lorg/codehaus/plexus/util/FastMap$KeySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    invoke-static {p1}, Lorg/codehaus/plexus/util/FastMap;->access$800(Lorg/codehaus/plexus/util/FastMap;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iput-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$300(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->after:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0}, Lorg/codehaus/plexus/util/FastMap$EntryImpl;->access$000(Lorg/codehaus/plexus/util/FastMap$EntryImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->this$1:Lorg/codehaus/plexus/util/FastMap$KeySet;

    iget-object v0, v0, Lorg/codehaus/plexus/util/FastMap$KeySet;->this$0:Lorg/codehaus/plexus/util/FastMap;

    iget-object v1, p0, Lorg/codehaus/plexus/util/FastMap$KeySet$1;->before:Lorg/codehaus/plexus/util/FastMap$EntryImpl;

    invoke-static {v0, v1}, Lorg/codehaus/plexus/util/FastMap;->access$900(Lorg/codehaus/plexus/util/FastMap;Lorg/codehaus/plexus/util/FastMap$EntryImpl;)V

    return-void
.end method
