.class final Lcom/tencent/mm/plugin/gms/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private dsA:Ljava/lang/String;

.field private dsB:Ljava/lang/String;

.field private dsC:I

.field final synthetic dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

.field private dsw:Ljava/lang/String;

.field private dsy:Z

.field private dsz:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object p1, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsy:Z

    .line 134
    iput-object p2, p0, Lcom/tencent/mm/plugin/gms/a;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/tencent/mm/plugin/gms/a;->dsA:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/tencent/mm/plugin/gms/a;->dsw:Ljava/lang/String;

    .line 137
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsy:Z

    .line 138
    return-void
.end method

.method private varargs QA()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    iget-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/plugin/gms/a;->dsA:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/gms/a;->dsw:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->a(Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsz:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsC:I
    :try_end_0
    .catch Lcom/google/android/gms/a/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/a/a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/a/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsB:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsC:I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/a/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsB:Ljava/lang/String;

    const/4 v1, -0x3

    iput v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsC:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    iget v1, v1, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->dsx:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    iget v2, v1, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->dsx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->dsx:I

    iput-boolean v4, p0, Lcom/tencent/mm/plugin/gms/a;->dsy:Z

    iget-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-virtual {v0}, Lcom/google/android/gms/a/d;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x7d2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startActivityForResult"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsB:Ljava/lang/String;

    const/4 v0, -0x4

    iput v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsC:I

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsB:Ljava/lang/String;

    const/4 v0, -0x5

    iput v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsC:I

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsB:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsC:I

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/tencent/mm/plugin/gms/a;->QA()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsz:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "token"

    iget-object v2, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-static {v2}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->a(Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "error_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "error_msg"

    iget-object v2, p0, Lcom/tencent/mm/plugin/gms/a;->dsB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsD:Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/gms/MMGoogleAuthUtil;->finish()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/gms/a;->dsz:Z

    .line 144
    return-void
.end method
