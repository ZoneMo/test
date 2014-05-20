.class final Lcom/tencent/mm/plugin/backup/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cNq:Lcom/tencent/mm/plugin/backup/ui/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/ui/an;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/ui/ao;->cNq:Lcom/tencent/mm/plugin/backup/ui/an;

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
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/ui/ao;->cNq:Lcom/tencent/mm/plugin/backup/ui/an;

    iget-object v0, v0, Lcom/tencent/mm/plugin/backup/ui/an;->cNp:Lcom/tencent/mm/plugin/backup/ui/BakChatUploadSelectUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/backup/ui/BakChatUploadSelectUI;->d(Lcom/tencent/mm/plugin/backup/ui/BakChatUploadSelectUI;)V

    .line 209
    return-void
.end method
