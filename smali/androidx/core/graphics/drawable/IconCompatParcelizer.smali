.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/b;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 4

    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mData:[B

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mData:[B

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->onPostParceling()V

    return-object v0
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/versionedparcelable/b;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->onPreParceling(Z)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a(II)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mData:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a([BI)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a(II)V

    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a(II)V

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/b;->a(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/b;->a(Ljava/lang/String;I)V

    return-void
.end method
