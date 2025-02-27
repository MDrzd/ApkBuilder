.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
.super Ljava/lang/Object;


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1    # Ljava/security/Signature;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1    # Ljavax/crypto/Mac;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->mSignature:Ljava/security/Signature;

    return-object v0
.end method
