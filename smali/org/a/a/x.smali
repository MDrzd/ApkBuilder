.class public interface abstract Lorg/a/a/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/a/a/x;

.field public static final b:Lorg/a/a/x;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/a/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/a/a/e;-><init>(I)V

    sput-object v0, Lorg/a/a/x;->a:Lorg/a/a/x;

    new-instance v0, Lorg/a/a/e;

    invoke-direct {v0, v1}, Lorg/a/a/e;-><init>(I)V

    sput-object v0, Lorg/a/a/x;->b:Lorg/a/a/x;

    return-void
.end method


# virtual methods
.method public abstract getChannel()I
.end method

.method public abstract getCharPositionInLine()I
.end method

.method public abstract getInputStream()Lorg/a/a/d;
.end method

.method public abstract getLine()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTokenIndex()I
.end method

.method public abstract getType()I
.end method

.method public abstract setCharPositionInLine(I)V
.end method

.method public abstract setLine(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setTokenIndex(I)V
.end method

.method public abstract setType(I)V
.end method
