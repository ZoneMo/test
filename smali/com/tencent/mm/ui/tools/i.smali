.class final Lcom/tencent/mm/ui/tools/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic dLF:Landroid/content/Intent;

.field final synthetic dnh:Landroid/content/Intent;

.field final synthetic eCu:I

.field private filePath:Ljava/lang/String;

.field private hgL:Landroid/app/ProgressDialog;

.field private hgM:Z

.field final synthetic hgN:Landroid/app/Activity;

.field final synthetic hgO:Ljava/lang/String;

.field final synthetic hgP:Lcom/tencent/mm/ui/tools/k;

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/i;->dLF:Landroid/content/Intent;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/i;->hgN:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/i;->hgO:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/i;->hgP:Lcom/tencent/mm/ui/tools/k;

    iput-object p4, p0, Lcom/tencent/mm/ui/tools/i;->dnh:Landroid/content/Intent;

    iput p5, p0, Lcom/tencent/mm/ui/tools/i;->eCu:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/i;->hgM:Z

    return v0
.end method

.method private varargs aML()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-object v2

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/h;->g(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/i;->hgO:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/tools/h;->r(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/i;->filePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/i;->aML()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/i;->hgM:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->hgP:Lcom/tencent/mm/ui/tools/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->dnh:Landroid/content/Intent;

    const-string v1, "CropImage_OutputPath"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/i;->hgP:Lcom/tencent/mm/ui/tools/k;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/i;->filePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/tools/k;->oI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->dnh:Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/i;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->hgN:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/i;->dnh:Landroid/content/Intent;

    iget v2, p0, Lcom/tencent/mm/ui/tools/i;->eCu:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->hgL:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->dLF:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/i;->uri:Landroid/net/Uri;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/i;->hgM:Z

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/i;->hgN:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/i;->hgN:Landroid/app/Activity;

    sget v2, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/i;->hgN:Landroid/app/Activity;

    sget v2, Lcom/tencent/mm/n;->bdZ:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/tools/j;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/j;-><init>(Lcom/tencent/mm/ui/tools/i;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/i;->hgL:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method
