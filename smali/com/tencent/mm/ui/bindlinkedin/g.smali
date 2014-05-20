.class final Lcom/tencent/mm/ui/bindlinkedin/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gIA:Lcom/tencent/mm/ui/bindlinkedin/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindlinkedin/f;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/tencent/mm/ui/bindlinkedin/g;->gIA:Lcom/tencent/mm/ui/bindlinkedin/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/bindlinkedin/g;->gIA:Lcom/tencent/mm/ui/bindlinkedin/f;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindlinkedin/f;->gIz:Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;->d(Lcom/tencent/mm/ui/bindlinkedin/BindLinkedInUI;)V

    .line 203
    return-void
.end method
