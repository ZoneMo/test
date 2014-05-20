.class final Lcom/tencent/mm/ui/bindmobile/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gIU:Lcom/tencent/mm/ui/bindmobile/s;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/s;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/t;->gIU:Lcom/tencent/mm/ui/bindmobile/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/t;->gIU:Lcom/tencent/mm/ui/bindmobile/s;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->aIy()V

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/t;->gIU:Lcom/tencent/mm/ui/bindmobile/s;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->c(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/t;->gIU:Lcom/tencent/mm/ui/bindmobile/s;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    sget v2, Lcom/tencent/mm/n;->beZ:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/t;->gIU:Lcom/tencent/mm/ui/bindmobile/s;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/s;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;Lcom/tencent/mm/modelfriend/aa;)Lcom/tencent/mm/modelfriend/aa;

    .line 229
    :cond_0
    return-void
.end method
