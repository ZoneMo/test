.class final Lcom/tencent/mm/ui/qrcode/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hdA:Lcom/tencent/mm/ui/qrcode/j;

.field final synthetic hdB:Lcom/tencent/mm/modelsimple/ak;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/j;Lcom/tencent/mm/modelsimple/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/l;->hdA:Lcom/tencent/mm/ui/qrcode/j;

    iput-object p2, p0, Lcom/tencent/mm/ui/qrcode/l;->hdB:Lcom/tencent/mm/modelsimple/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/l;->hdB:Lcom/tencent/mm/modelsimple/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 148
    return-void
.end method
