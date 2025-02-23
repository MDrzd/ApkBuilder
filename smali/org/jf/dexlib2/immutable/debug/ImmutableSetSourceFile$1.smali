.class Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile$1;
.super Lorg/jf/dexlib2/base/reference/BaseStringReference;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile$1;->this$0:Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseStringReference;-><init>()V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile$1;->this$0:Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;

    iget-object v0, v0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    return-object v0
.end method
