.class final Lcom/tencent/mm/ui/bindmobile/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gJe:Lcom/tencent/mm/ui/bindmobile/aj;

.field final synthetic gsc:Lcom/tencent/mm/modelfriend/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/aj;Lcom/tencent/mm/modelfriend/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/ak;->gJe:Lcom/tencent/mm/ui/bindmobile/aj;

    iput-object p2, p0, Lcom/tencent/mm/ui/bindmobile/ak;->gsc:Lcom/tencent/mm/modelfriend/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/ak;->gsc:Lcom/tencent/mm/modelfriend/ai;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 177
    return-void
.end method
