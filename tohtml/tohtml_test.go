package tohtml

import (
	"testing"

	"github.com/sjs2109/notionapi"
	"github.com/stretchr/testify/assert"
)

// This is not meant to be enabled all the time. It's helpful
// for debugging the code in the debugger by running this test
func testDownloadAndToHTML(t *testing.T) {
	pageID := "92dd7aedf1bb4121aaa8986735df3d13"
	client := &notionapi.Client{}
	page, err := client.DownloadPage(pageID)
	assert.NoError(t, err)
	html := ToHTML(page)
	assert.True(t, len(html) > 0)
}
