.class final Lcom/tencent/mm/plugin/wallet/bind/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/platformtools/w;


# instance fields
.field public eXR:Landroid/widget/TextView;

.field public eXS:Landroid/widget/TextView;

.field public eXT:Landroid/widget/TextView;

.field public eXU:Landroid/widget/RelativeLayout;

.field public eXV:Landroid/widget/ImageView;

.field public eXW:Landroid/widget/ImageView;

.field public eXX:Landroid/widget/TextView;

.field public eXY:Lcom/tencent/mm/plugin/wallet/d/b;

.field final synthetic eXZ:Lcom/tencent/mm/plugin/wallet/bind/ui/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/a;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 250
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXZ:Lcom/tencent/mm/plugin/wallet/bind/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXR:Landroid/widget/TextView;

    .line 252
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXS:Landroid/widget/TextView;

    .line 253
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXT:Landroid/widget/TextView;

    .line 254
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXU:Landroid/widget/RelativeLayout;

    .line 255
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXV:Landroid/widget/ImageView;

    .line 256
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXW:Landroid/widget/ImageView;

    .line 257
    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXX:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    const-string v1, "MicroMsg.BankcardListAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", bitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    if-nez v0, :cond_2

    .line 298
    :cond_0
    :goto_1
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/d/b;->logoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXW:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/c;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/plugin/wallet/bind/ui/c;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/d/b;->fdJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXV:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/d;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/plugin/wallet/bind/ui/d;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXY:Lcom/tencent/mm/plugin/wallet/d/b;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/d/b;->fdI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXU:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/ui/e;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/plugin/wallet/bind/ui/e;-><init>(Lcom/tencent/mm/plugin/wallet/bind/ui/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
