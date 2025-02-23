.class public Lorg/jf/util/BlankReader;
.super Ljava/io/Reader;


# static fields
.field public static final INSTANCE:Lorg/jf/util/BlankReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/util/BlankReader;

    invoke-direct {v0}, Lorg/jf/util/BlankReader;-><init>()V

    sput-object v0, Lorg/jf/util/BlankReader;->INSTANCE:Lorg/jf/util/BlankReader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public read([CII)I
    .registers 4
    .param p1    # [C
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 p1, -0x1

    return p1
.end method
