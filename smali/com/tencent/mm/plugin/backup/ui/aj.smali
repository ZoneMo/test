.class final Lcom/tencent/mm/plugin/backup/ui/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cNg:Lcom/tencent/mm/plugin/backup/ui/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/aj;->cNg:Lcom/tencent/mm/plugin/backup/ui/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/aj;->cNg:Lcom/tencent/mm/plugin/backup/ui/ai;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/ui/ai;->cNe:Lcom/tencent/mm/plugin/backup/ui/BakChatUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUI;->d(Lcom/tencent/mm/plugin/backup/ui/BakChatUI;)V

    .line 183
    return-void
.end method
