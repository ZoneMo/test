.class public final Lcom/google/android/gms/internal/bd;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/plus/b;


# instance fields
.field private KD:Landroid/graphics/Bitmap;

.field private Ky:Landroid/net/Uri;

.field private MY:I

.field private MZ:Z

.field private Na:Z

.field private Nb:Lcom/google/android/gms/plus/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/bd;->MY:I

    if-ne v3, p2, :cond_3

    move v3, v1

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    iput-object p1, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    iput p2, p0, Lcom/google/android/gms/internal/bd;->MY:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bd;->Na:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    if-eqz v0, :cond_5

    const-string v0, "android.resource"

    iget-object v3, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bd;->Na:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bd;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/a;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bd;->setImageURI(Landroid/net/Uri;)V

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/bd;->Na:Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->Ky:Landroid/net/Uri;

    iget v1, p0, Lcom/google/android/gms/internal/bd;->MY:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/plus/b;I)V

    goto :goto_4
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bd;->MZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/common/c;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->KD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->KD:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bd;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bd;->MZ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->Nb:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/a;->c(Lcom/google/android/gms/common/c;)V

    :cond_0
    return-void
.end method
