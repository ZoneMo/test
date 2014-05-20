.class final Lcom/tencent/mm/ui/bindmobile/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gIT:Lcom/tencent/mm/ui/bindmobile/q;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/q;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/r;->gIT:Lcom/tencent/mm/ui/bindmobile/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zq()V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/r;->gIT:Lcom/tencent/mm/ui/bindmobile/q;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/q;->gIR:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->FR()V

    .line 209
    return-void
.end method
