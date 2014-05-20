.class final Lcom/tencent/mm/ui/bindmobile/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gJk:Lcom/tencent/mm/ui/bindmobile/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/ap;->gJk:Lcom/tencent/mm/ui/bindmobile/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/ap;->gJk:Lcom/tencent/mm/ui/bindmobile/ao;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/ao;->gJj:Lcom/tencent/mm/ui/bindmobile/FindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/FindMContactIntroUI;->b(Lcom/tencent/mm/ui/bindmobile/FindMContactIntroUI;)V

    .line 152
    return-void
.end method
