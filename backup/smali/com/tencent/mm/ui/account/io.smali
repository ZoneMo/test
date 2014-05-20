.class final Lcom/tencent/mm/ui/account/io;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gtv:Lcom/tencent/mm/modelsimple/ad;

.field final synthetic gtw:Lcom/tencent/mm/ui/account/in;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/in;Lcom/tencent/mm/modelsimple/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tencent/mm/ui/account/io;->gtw:Lcom/tencent/mm/ui/account/in;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/io;->gtv:Lcom/tencent/mm/modelsimple/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/io;->gtv:Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 112
    return-void
.end method
