.class public final Lcom/tencent/mm/plugin/accountsync/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/n/n;


# instance fields
.field private cHU:Lcom/tencent/mm/ui/base/ch;

.field private cHV:Lcom/tencent/mm/plugin/accountsync/a/e;

.field private cmI:Lcom/tencent/mm/n/x;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/tencent/mm/plugin/accountsync/a/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->handler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHV:Lcom/tencent/mm/plugin/accountsync/a/e;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/accountsync/a/b;)Lcom/tencent/mm/n/x;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cmI:Lcom/tencent/mm/n/x;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/mm/plugin/accountsync/a/e;)Lcom/tencent/mm/plugin/accountsync/a/b;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/mm/plugin/accountsync/a/b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/accountsync/a/b;-><init>(Landroid/content/Context;Lcom/tencent/mm/plugin/accountsync/a/e;)V

    .line 42
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    sget-object v1, Lcom/tencent/mm/plugin/a/a;->cHT:Lcom/tencent/mm/pluginsdk/d;

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/d;->a(Lcom/tencent/mm/n/n;)Lcom/tencent/mm/n/x;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/accountsync/a/b;->cmI:Lcom/tencent/mm/n/x;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/plugin/accountsync/a/b;->cmI:Lcom/tencent/mm/n/x;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v1, v0, Lcom/tencent/mm/plugin/accountsync/a/b;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/tencent/mm/plugin/accountsync/a/b;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/plugin/accountsync/a/b;->context:Landroid/content/Context;

    sget v3, Lcom/tencent/mm/n;->beb:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/plugin/accountsync/a/c;

    invoke-direct {v4, v0}, Lcom/tencent/mm/plugin/accountsync/a/c;-><init>(Lcom/tencent/mm/plugin/accountsync/a/b;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHU:Lcom/tencent/mm/ui/base/ch;

    .line 43
    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/accountsync/a/b;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHU:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/accountsync/a/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(IILcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    if-eqz p2, :cond_0

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/mm/plugin/accountsync/a/d;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/plugin/accountsync/a/d;-><init>(Lcom/tencent/mm/plugin/accountsync/a/b;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHV:Lcom/tencent/mm/plugin/accountsync/a/e;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/accountsync/a/e;->FP()V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHU:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 91
    :cond_0
    return-void

    .line 84
    :cond_1
    const-string v0, "MicroMsg.DoInit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "do init failed, err="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/a/b;->cHV:Lcom/tencent/mm/plugin/accountsync/a/e;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/accountsync/a/e;->FP()V

    goto :goto_0
.end method
