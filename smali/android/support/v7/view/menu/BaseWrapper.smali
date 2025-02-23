.class Landroid/support/v7/view/menu/BaseWrapper;
.super Ljava/lang/Object;


# instance fields
.field final mWrappedObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrapped Object can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    return-object v0
.end method
